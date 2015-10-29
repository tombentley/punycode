Character encodeDigit(Integer d, Boolean flag) {
    return (d + 22 + 75 * (d < 26 then 1 else 0) - ((!flag then 1 else 0).leftLogicalShift(5))).character;
    /*  0..25 map to ASCII a..z or A..Z */
    /* 26..35 map to ASCII 0..9         */
}

"The encoded string for the given unicode `input`.
 
 See [RFC3492](http://www.ietf.org/rfc/rfc3492.txt)"
shared String encodePunycode(String input) {
    variable value n = initial_n;
    variable value delta = 0;
    variable value bias = initial_bias;
    value output = StringBuilder();
    
    /*copy the basic code points to the output in order, followed by a delimiter if b > 0
     {if the input contains a non-basic code point < n then fail}*/
    for (c in input) {
        if (c < '\{#0080}') {
            output.appendCharacter(c);
        }
    }
    Integer b = output.size;/*the number of basic code points in the input*/
    if (b > 0) {
        output.appendCharacter('-');
    }
    variable value h = b;
    
    while (h < input.size) {
        variable value m = runtime.maxIntegerValue;/*the minimum {non-basic} code point >= n in the input*/
        for (x in input) {
            if (n <= x.integer < m) {
                m = x.integer;
            }
        }
        delta = delta + (m - n) * (h + 1); /*fail on overflow*/
        n = m;
        for (codepoint in input/*each code point c in the input (in order)*/) {
            value c = codepoint.integer;
            if (c < n /*{or c is basic}*/) {
                delta++; /*fail on overflow*/
            }
            if (c == n) {
                variable value q = delta;
                variable value k = 0;
                //print("next codepoint to insert is ``codepoint`` (``c``)");
                while (true) /*base to infinity in steps of base */ {
                    k+=base;
                    Integer t;
                    if (k <= bias) {
                        t = tmin;
                    } else if (k >= bias + tmax) {
                        t = tmax;
                    } else {
                        t = k - bias;
                    }
                    if (q < t) {
                        break;
                    }
                    /*output the code point for digit t + ((q - t) mod (base - t))*/
                    value digit = t + ((q - t) % (base - t));
                    value encodedDigit = encodeDigit(digit, true);
                    //print("encoded digit ``digit`` encoded ``encodedDigit``");
                    output.appendCharacter(encodedDigit);
                    q = (q - t) / (base - t);
                }
                /*output the code point for digit q TODO*/
                value encodedDigit = encodeDigit(q, true);
                //print("encoded digit ``q`` encoded ``encodedDigit``");
                output.appendCharacter(encodedDigit);
                bias = adapt(delta, h + 1, h == b);
                //print("bias becomes ``bias``");
                delta = 0;
                h++;
            }
        }
        delta++;
        n++;
    }
    return output.string;
}





String acePrefix = "xn--";