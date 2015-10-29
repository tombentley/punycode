import ceylon.test {
    test,
    assertEquals
}
import com.github.tombentley.punycode {
    decodePunycode,
    encodePunycode
}
test
shared void testDecodeA() {
    // A
    assertEquals("\{#0644}\{#064A}\{#0647}\{#0645}\{#0627}\{#0628}\{#062A}\{#0643}\{#0644}"+
        "\{#0645}\{#0648}\{#0634}\{#0639}\{#0631}\{#0628}\{#064A}\{#061F}" 
            , decodePunycode("egbpdaj6bu4bxfgehfvwxn"));
}
test
shared void testDecodeB() {
    // B
    assertEquals("\{#4ED6}\{#4EEC}\{#4E3A}\{#4EC0}\{#4E48}\{#4E0D}\{#8BF4}\{#4E2D}\{#6587}"
        , decodePunycode("ihqwcrb4cv8a8dqg056pqjye"));
}
test
shared void testDecodeC() {
    // C
    assertEquals("\{#4ED6}\{#5011}\{#7232}\{#4EC0}\{#9EBD}\{#4E0D}\{#8AAA}\{#4E2D}\{#6587}"
        , decodePunycode("ihqwctvzc91f659drss3x8bo0yb"));
}
test
shared void testDecodeD() {
    // D
    assertEquals("\{#0050}\{#0072}\{#006F}\{#010D}\{#0070}\{#0072}\{#006F}\{#0073}\{#0074}"+
        "\{#011B}\{#006E}\{#0065}\{#006D}\{#006C}\{#0075}\{#0076}\{#00ED}\{#010D}"+
            "\{#0065}\{#0073}\{#006B}\{#0079}" 
            , decodePunycode("Proprostnemluvesky-uyb24dma41a"));
}
test
shared void testDecodeE() {
    // E
    assertEquals("\{#05DC}\{#05DE}\{#05D4}\{#05D4}\{#05DD}\{#05E4}\{#05E9}\{#05D5}\{#05D8}"+
        "\{#05DC}\{#05D0}\{#05DE}\{#05D3}\{#05D1}\{#05E8}\{#05D9}\{#05DD}\{#05E2}"+
            "\{#05D1}\{#05E8}\{#05D9}\{#05EA}"
            , decodePunycode("4dbcagdahymbxekheh6e0a7fei0b"));
}
test
shared void testDecodeF() {
    // F
    assertEquals("\{#092F}\{#0939}\{#0932}\{#094B}\{#0917}\{#0939}\{#093F}\{#0928}\{#094D}"+
        "\{#0926}\{#0940}\{#0915}\{#094D}\{#092F}\{#094B}\{#0902}\{#0928}\{#0939}"+
            "\{#0940}\{#0902}\{#092C}\{#094B}\{#0932}\{#0938}\{#0915}\{#0924}\{#0947}"+
            "\{#0939}\{#0948}\{#0902}"
            , decodePunycode("i1baa7eci9glrd9b2ae1bj0hfcgg6iyaf8o0a1dig0cd"));
}
test
shared void testDecodeG() {
    // G
    assertEquals("\{#306A}\{#305C}\{#307F}\{#3093}\{#306A}\{#65E5}\{#672C}\{#8A9E}\{#3092}"+
        "\{#8A71}\{#3057}\{#3066}\{#304F}\{#308C}\{#306A}\{#3044}\{#306E}\{#304B}"
            , decodePunycode("n8jok5ay5dzabd5bym9f0cm5685rrjetr6pdxa"));
}
test
shared void testDecodeH() {
    // H
    assertEquals("\{#C138}\{#ACC4}\{#C758}\{#BAA8}\{#B4E0}\{#C0AC}\{#B78C}\{#B4E4}\{#C774}"+
        "\{#D55C}\{#AD6D}\{#C5B4}\{#B97C}\{#C774}\{#D574}\{#D55C}\{#B2E4}\{#BA74}"+
            "\{#C5BC}\{#B9C8}\{#B098}\{#C88B}\{#C744}\{#AE4C}"
            , decodePunycode("989aomsvi5e83db1d2a355cv1e0vak1dwrv93d5xbh15a0dt30a5jpsd879ccm6fea98c"));
}
test
shared void testDecodeI() {
    // I
    assertEquals("\{#043F}\{#043E}\{#0447}\{#0435}\{#043C}\{#0443}\{#0436}\{#0435}\{#043E}"+
        "\{#043D}\{#0438}\{#043D}\{#0435}\{#0433}\{#043E}\{#0432}\{#043E}\{#0440}"+
            "\{#044F}\{#0442}\{#043F}\{#043E}\{#0440}\{#0443}\{#0441}\{#0441}\{#043A}"+
            "\{#0438}"
            , decodePunycode("b1abfaaepdrnnbgefbaDotcwatmq2g4l"));
}
test
shared void testDecodeJ() {
    // J
    assertEquals("\{#0050}\{#006F}\{#0072}\{#0071}\{#0075}\{#00E9}\{#006E}\{#006F}\{#0070}"+
        "\{#0075}\{#0065}\{#0064}\{#0065}\{#006E}\{#0073}\{#0069}\{#006D}\{#0070}"+
            "\{#006C}\{#0065}\{#006D}\{#0065}\{#006E}\{#0074}\{#0065}\{#0068}\{#0061}"+
            "\{#0062}\{#006C}\{#0061}\{#0072}\{#0065}\{#006E}\{#0045}\{#0073}\{#0070}"+
            "\{#0061}\{#00F1}\{#006F}\{#006C}"
            , decodePunycode("PorqunopuedensimplementehablarenEspaol-fmd56a"));
}
test
shared void testDecodeK() {
    // K
    assertEquals("\{#0054}\{#1EA1}\{#0069}\{#0073}\{#0061}\{#006F}\{#0068}\{#1ECD}\{#006B}"+
        "\{#0068}\{#00F4}\{#006E}\{#0067}\{#0074}\{#0068}\{#1EC3}\{#0063}\{#0068}"+
            "\{#1EC9}\{#006E}\{#00F3}\{#0069}\{#0074}\{#0069}\{#1EBF}\{#006E}\{#0067}"+
            "\{#0056}\{#0069}\{#1EC7}\{#0074}"
            , decodePunycode("TisaohkhngthchnitingVit-kjcr8268qyxafd2f1b9g"));
}
test
shared void testDecodeL() {
    // L
    assertEquals("\{#0033}\{#5E74}\{#0042}\{#7D44}\{#91D1}\{#516B}\{#5148}\{#751F}"
        , decodePunycode("3B-ww4c5e180e575a65lsy2b"));
}
test
shared void testDecodeM() {
    // M
    assertEquals("\{#5B89}\{#5BA4}\{#5948}\{#7F8E}\{#6075}\{#002D}\{#0077}\{#0069}\{#0074}"+
        "\{#0068}\{#002D}\{#0053}\{#0055}\{#0050}\{#0045}\{#0052}\{#002D}\{#004D}"+
            "\{#004F}\{#004E}\{#004B}\{#0045}\{#0059}\{#0053}"
            , decodePunycode("-with-SUPER-MONKEYS-pc58ag80a8qai00g7n9n"));
}
test
shared void testDecodeN() {
    // N
    assertEquals("\{#0048}\{#0065}\{#006C}\{#006C}\{#006F}\{#002D}\{#0041}\{#006E}\{#006F}"+
        "\{#0074}\{#0068}\{#0065}\{#0072}\{#002D}\{#0057}\{#0061}\{#0079}\{#002D}"+
            "\{#305D}\{#308C}\{#305E}\{#308C}\{#306E}\{#5834}\{#6240}"
            , decodePunycode("Hello-Another-Way--fc4qua05auwb3674vfr0b"));
}
test
shared void testDecodeO() {
    // O
    assertEquals("\{#3072}\{#3068}\{#3064}\{#5C4B}\{#6839}\{#306E}\{#4E0B}\{#0032}"
        , decodePunycode("2-u9tlzr9756bt3uc0v"));
}
test
shared void testDecodeP() {
    // P
    assertEquals("\{#004D}\{#0061}\{#006A}\{#0069}\{#3067}\{#004B}\{#006F}\{#0069}\{#3059}"+
        "\{#308B}\{#0035}\{#79D2}\{#524D}"
            , decodePunycode("MajiKoi5-783gue6qz075azm5e"));
}
test
shared void testDecodeQ() {
    // Q
    assertEquals("\{#30D1}\{#30D5}\{#30A3}\{#30FC}\{#0064}\{#0065}\{#30EB}\{#30F3}\{#30D0}"
        , decodePunycode("de-jg4avhby1noc0d"));
}
test
shared void testDecodeR() {
    // R
    assertEquals("\{#305D}\{#306E}\{#30B9}\{#30D4}\{#30FC}\{#30C9}\{#3067}"
        , decodePunycode("d9juau41awczczp"));
}
test
shared void testDecodeS() {
    //S
    assertEquals("-> $1.00 <-" , decodePunycode("-> $1.00 <--"));
}
test
shared void testEncodeA() {
    // A
    assertEquals("egbpdaj6bu4bxfgehfvwxn" 
        , encodePunycode("\{#0644}\{#064A}\{#0647}\{#0645}\{#0627}\{#0628}\{#062A}\{#0643}\{#0644}"+
        "\{#0645}\{#0648}\{#0634}\{#0639}\{#0631}\{#0628}\{#064A}\{#061F}"));
}
test
shared void testEncodeB() {
    // B
    assertEquals("ihqwcrb4cv8a8dqg056pqjye"
        , encodePunycode("\{#4ED6}\{#4EEC}\{#4E3A}\{#4EC0}\{#4E48}\{#4E0D}\{#8BF4}\{#4E2D}\{#6587}"));
}
test
shared void testEncodeC() {
    // C
    assertEquals("ihqwctvzc91f659drss3x8bo0yb"
        , encodePunycode("\{#4ED6}\{#5011}\{#7232}\{#4EC0}\{#9EBD}\{#4E0D}\{#8AAA}\{#4E2D}\{#6587}"));
}
test
shared void testEncodeD() {
    // D
    assertEquals("Proprostnemluvesky-uyb24dma41a" 
        , encodePunycode("\{#0050}\{#0072}\{#006F}\{#010D}\{#0070}\{#0072}\{#006F}\{#0073}\{#0074}"+
        "\{#011B}\{#006E}\{#0065}\{#006D}\{#006C}\{#0075}\{#0076}\{#00ED}\{#010D}"+
            "\{#0065}\{#0073}\{#006B}\{#0079}"));
}
test
shared void testEncodeE() {
    // E
    assertEquals("4dbcagdahymbxekheh6e0a7fei0b"
        , encodePunycode("\{#05DC}\{#05DE}\{#05D4}\{#05D4}\{#05DD}\{#05E4}\{#05E9}\{#05D5}\{#05D8}"+
        "\{#05DC}\{#05D0}\{#05DE}\{#05D3}\{#05D1}\{#05E8}\{#05D9}\{#05DD}\{#05E2}"+
            "\{#05D1}\{#05E8}\{#05D9}\{#05EA}"));
}
test
shared void testEncodeF() {
    // F
    assertEquals("i1baa7eci9glrd9b2ae1bj0hfcgg6iyaf8o0a1dig0cd"
        , encodePunycode("\{#092F}\{#0939}\{#0932}\{#094B}\{#0917}\{#0939}\{#093F}\{#0928}\{#094D}"+
        "\{#0926}\{#0940}\{#0915}\{#094D}\{#092F}\{#094B}\{#0902}\{#0928}\{#0939}"+
            "\{#0940}\{#0902}\{#092C}\{#094B}\{#0932}\{#0938}\{#0915}\{#0924}\{#0947}"+
            "\{#0939}\{#0948}\{#0902}"));
}
test
shared void testEncodeG() {
    // G
    assertEquals("n8jok5ay5dzabd5bym9f0cm5685rrjetr6pdxa"
        , encodePunycode("\{#306A}\{#305C}\{#307F}\{#3093}\{#306A}\{#65E5}\{#672C}\{#8A9E}\{#3092}"+
        "\{#8A71}\{#3057}\{#3066}\{#304F}\{#308C}\{#306A}\{#3044}\{#306E}\{#304B}"));
}
test
shared void testEncodeH() {
    // H
    assertEquals("989aomsvi5e83db1d2a355cv1e0vak1dwrv93d5xbh15a0dt30a5jpsd879ccm6fea98c"
        , encodePunycode("\{#C138}\{#ACC4}\{#C758}\{#BAA8}\{#B4E0}\{#C0AC}\{#B78C}\{#B4E4}\{#C774}"+
        "\{#D55C}\{#AD6D}\{#C5B4}\{#B97C}\{#C774}\{#D574}\{#D55C}\{#B2E4}\{#BA74}"+
            "\{#C5BC}\{#B9C8}\{#B098}\{#C88B}\{#C744}\{#AE4C}"));
}
test
shared void testEncodeI() {
    // I
    assertEquals("b1abfaaepdrnnbgefbaDotcwatmq2g4l"
            , encodePunycode("\{#043F}\{#043E}\{#0447}\{#0435}\{#043C}\{#0443}\{#0436}\{#0435}\{#043E}"+
            "\{#043D}\{#0438}\{#043D}\{#0435}\{#0433}\{#043E}\{#0432}\{#043E}\{#0440}"+
            "\{#044F}\{#0442}\{#043F}\{#043E}\{#0440}\{#0443}\{#0441}\{#0441}\{#043A}"+
            "\{#0438}"));
 }
 test
 shared void testEncodeJ() {
    // J
    assertEquals("PorqunopuedensimplementehablarenEspaol-fmd56a"
        , encodePunycode("\{#0050}\{#006F}\{#0072}\{#0071}\{#0075}\{#00E9}\{#006E}\{#006F}\{#0070}"+
        "\{#0075}\{#0065}\{#0064}\{#0065}\{#006E}\{#0073}\{#0069}\{#006D}\{#0070}"+
            "\{#006C}\{#0065}\{#006D}\{#0065}\{#006E}\{#0074}\{#0065}\{#0068}\{#0061}"+
            "\{#0062}\{#006C}\{#0061}\{#0072}\{#0065}\{#006E}\{#0045}\{#0073}\{#0070}"+
            "\{#0061}\{#00F1}\{#006F}\{#006C}"));
}
test
shared void testEncodeK() {
    // K
    assertEquals("TisaohkhngthchnitingVit-kjcr8268qyxafd2f1b9g"
        , encodePunycode("\{#0054}\{#1EA1}\{#0069}\{#0073}\{#0061}\{#006F}\{#0068}\{#1ECD}\{#006B}"+
        "\{#0068}\{#00F4}\{#006E}\{#0067}\{#0074}\{#0068}\{#1EC3}\{#0063}\{#0068}"+
            "\{#1EC9}\{#006E}\{#00F3}\{#0069}\{#0074}\{#0069}\{#1EBF}\{#006E}\{#0067}"+
            "\{#0056}\{#0069}\{#1EC7}\{#0074}"));
}
test
shared void testEncodeL() {
    // L
    assertEquals("3B-ww4c5e180e575a65lsy2b"
        , encodePunycode("\{#0033}\{#5E74}\{#0042}\{#7D44}\{#91D1}\{#516B}\{#5148}\{#751F}"));
}
test
shared void testEncodeM() {
    // M
    assertEquals("-with-SUPER-MONKEYS-pc58ag80a8qai00g7n9n"
        , encodePunycode("\{#5B89}\{#5BA4}\{#5948}\{#7F8E}\{#6075}\{#002D}\{#0077}\{#0069}\{#0074}"+
        "\{#0068}\{#002D}\{#0053}\{#0055}\{#0050}\{#0045}\{#0052}\{#002D}\{#004D}"+
            "\{#004F}\{#004E}\{#004B}\{#0045}\{#0059}\{#0053}"));
}
test
shared void testEncodeN() {
    // N
    assertEquals("Hello-Another-Way--fc4qua05auwb3674vfr0b"
        , encodePunycode("\{#0048}\{#0065}\{#006C}\{#006C}\{#006F}\{#002D}\{#0041}\{#006E}\{#006F}"+
        "\{#0074}\{#0068}\{#0065}\{#0072}\{#002D}\{#0057}\{#0061}\{#0079}\{#002D}"+
            "\{#305D}\{#308C}\{#305E}\{#308C}\{#306E}\{#5834}\{#6240}"));
}
test
shared void testEncodeO() {
    // O
    assertEquals("2-u9tlzr9756bt3uc0v"
        , encodePunycode("\{#3072}\{#3068}\{#3064}\{#5C4B}\{#6839}\{#306E}\{#4E0B}\{#0032}"));
}
test
shared void testEncodeP() {
    // P
    assertEquals("MajiKoi5-783gue6qz075azm5e"
        , encodePunycode("\{#004D}\{#0061}\{#006A}\{#0069}\{#3067}\{#004B}\{#006F}\{#0069}\{#3059}"+
        "\{#308B}\{#0035}\{#79D2}\{#524D}"));
}
test
shared void testEncodeQ() {
    // Q
    assertEquals("de-jg4avhby1noc0d"
        , encodePunycode("\{#30D1}\{#30D5}\{#30A3}\{#30FC}\{#0064}\{#0065}\{#30EB}\{#30F3}\{#30D0}"));
}
test
shared void testEncodeR() {
    // R
    assertEquals("d9juau41awczczp"
        , encodePunycode("\{#305D}\{#306E}\{#30B9}\{#30D4}\{#30FC}\{#30C9}\{#3067}"));
}
test
shared void testEncodeS() {
    //S
    assertEquals("-> $1.00 <--" , encodePunycode("-> $1.00 <-"));
}
