
Integer base         = 36;
Integer tmin         = 1;
Integer tmax         = 26;
Integer skew         = 38;
Integer damp         = 700;
Integer initial_bias = 72;
Integer initial_n    = 128;// = 0x80

Integer adapt(delta, Integer numpoints, Boolean firsttime) {
    variable Integer delta;
    if (firsttime) {
        delta = delta / damp;
    } else {
        delta = delta / 2;
    }
    delta = delta + (delta / numpoints);
    variable value k = 0;
    while (delta > ((base - tmin) * tmax) / 2) {
        delta = delta / (base - tmin);
        k = k + base;
    }
    return k + (((base - tmin + 1) * delta) / (delta + skew));
}