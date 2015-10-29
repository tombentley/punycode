

Integer decode_digit(Integer cp) {
    if (cp - 48 < 10) {
        return cp - 22;
    } else if (cp - 65 < 26) {
        return cp - 65;
    } else if (cp - 97 < 26) {
        return cp - 97;
    } else {
        return base;
    }
}

"The decoded string for the given punycode-encoded `input`.
 
 See [RFC3492](http://www.ietf.org/rfc/rfc3492.txt)"
shared String decodePunycode(input) {
    // TODO checking for overflow
    // TODO testing edge cases (empty input, input of dashes etc)
    variable String input;
    variable value index = 0;
    variable value n = initial_n;
    variable value i = 0;
    variable value bias = initial_bias;
    //print("n is ``n``, i is ``i``, bias is ``bias``");
    //print("input is ``input``");
    //let output = an empty string indexed from 0
    value output = StringBuilder();
    //consume all code points before the last delimiter (if there is one)
    //  and copy them to output, fail on any non-basic code point
    value dash = input.lastOccurrence('-');
    if (exists dash) {
        while (index < dash) {
            assert(exists codepoint=input[index],
            codepoint< '\{#0080}');
            index++;
            output.appendCharacter(codepoint);
        } 
    } //else {
        //print("there is no delimiter");
    //}
    //if more than zero code points were consumed then consume one more
    //  (which will be the last delimiter)
    if (index > 0) {
        index++;
    } 
    
    while (index < input.size) {// the input is not exhausted
        value oldi = i;
        variable value w = 1;
        variable value k = 0;
        while (true) {/*base to infinity in steps of base*/
            k+=base;
            //consume a code point, or fail if there was none to consume
            assert(exists codepoint=input[index]);
            index++;
            value digit = decode_digit(codepoint.integer);/*the code point's digit-value, fail if it has none*/
            i = i + digit * w;//, fail on overflow//TODO
            Integer t;
            if (k <= bias) {
                t = tmin;
            } else if (k >= bias + tmax) {
                t  = tmax;
            } else {
                t = k - bias;
            }
            if (digit < t) {
                break;
            }
            w = w * (base - t);//, fail on overflow//TODO
        }
        //print("delta ? decodes to ``i``");
        bias = adapt(i - oldi, output.size + 1, oldi == 0);
        //print("bias becomes ``bias``");
        n = n + i / (output.size + 1);//, fail on overflow//TODO
        i = i % (output.size + 1);
        "if n is a basic code point then fail"
        assert(n >= '\{#0080}'.integer);
        //insert n into output at position i
        output.insertCharacter(i, n.character);
        //print(output.string);
        i++;
    }
    return output.string;
}
