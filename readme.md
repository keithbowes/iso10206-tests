# ISO 10206 tests

This is just some tests for checking a compiler's [ISO 10206](https://www.iso.org/obp/ui/#iso:std:iso-iec:10206:ed-1:v1:en) support.  It's intended to help check the correctness of [Free Pascal](https://www.freepascal.org/)'s [upcoming ISO 10206 support](http://wiki.freepascal.org/Mode_extpas).  It includes shell scripts to build the files for both Free Pascal and [GNU Pascal](http://gnu-pascal.de/) (on Unix-like systems; on other systems, they'll have to be adapted).  GNU Pascal has excellent standards support, so that can stand as a reference.

As of 2017-10-12, there are 36 tests.  GNU Pascal passes all 36.  Free Pascal (versions 2.6.4, 3.0.2, and 3.1.1 tested) passes 3 and fails 33.

## Other compilers

You could easily adapt the scripts to build for other compilers, but commercial compilers tend to use their own proprietary extensions rather than obeying standards, and free compilers tend to have a lack of resources.  So, the two big free compilers are our best chance for getting standards implemented (and hopefully, increased interoperablity between them (though, any attempt at that will have to be on FPC's side, as GPC is all but abandoned)).

Below are some notes about them.  I personally am focusing on Free Pascal, but developers of other compilers are free to use these tests to gauge their implementations.

### Vector Pascal

[Vector Pascal](https://sourceforge.net/projects/vectorpascalcom/) has some interesting ideas, such as adding extensions for vector programming and more importantly, Unicode identifiers.  Though, it falls very short on its claim of supporting ISO 10206, only passing 5 of these tests (oddly, it fails all three that FPC passes, and FPC fails all five it passes), as of 2017-10-13.

One has to wonder though why the developers started their own Pascal compiler for vector programming instead of working on Free Pascal (which is surely the recommended Pascal compiler to work on, because as far as I know, it's the only one actually written in Pascal).  Surely, Unicode identifiers could be added to Free Pascal and vector programming could be done though some sort of module (Free Pascal seems to already have a vectors unit using generics, but I get the impression that what Vector Pascal is referring to by vector programming is the ability to manipulate parts of an array, like doing "a[2..4] := 3" to make a[2], a[3], and a[4] all equal 3; though, of course, ISO 10206's value constructors (which Vector Pascal doesn't support) pretty much do the same thing: "a := *arraytype*[0,5:0;2..4:3]").  In addition, Free Pascal is unbelievably faster; Vector Pascal makes g++ seem fast by comparison.

### Virtual Pascal

That's been officially dead for over a decade, but I seriously doubt it would pass a single test.  I could be wrong.  I might try it out later.  It is amazing that the VP community still exists and that they didn't follow the VP developers' advice to move to Free Pascal.
