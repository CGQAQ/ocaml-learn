#include <caml/mlvalues.h>
#include <caml/alloc.h>

#include <stdio.h>

CAMLprim void say_hello() {
    printf("Hello, world! From C land.\n");
}

CAMLprim value add(value a, value b, value c) {
    int _a = Int_val(a);
    int _b = Int_val(b);
    float _c = Double_val(c);
    printf("Adding %d, %d and %f\n", _a, _b, _c);

    double d = (double)(_a + _b + _c);

    return caml_copy_double(d);
}