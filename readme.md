# ISO 10206 tests

This is just some tests for checking a compiler's [ISO 10206](https://www.iso.org/obp/ui/#iso:std:iso-iec:10206:ed-1:v1:en) support.  It's intended to help check the correctness of [Free Pascal](https://www.freepascal.org/)'s [upcoming ISO 10206 support](http://wiki.freepascal.org/Extended_Pascal).  It includes shell scripts to build the files for both Free Pascal and [GNU Pascal](http://gnu-pascal.de/) (on Unix-like systems; on other systems, they'll have to be adapted).  GNU Pascal has excellent standards support, so that can stand as a reference.

As of 2017-10-12, there are 36 tests.  GNU Pascal passes all 36.  Free Pascal (versions 2.6.4, 3.0.2, and 3.1.1 tested) passes 3 and fails 33.

## Other compilers

You could easily adapt the scripts to build for other compilers, but commercial compilers tend to use their own proprietary extensions rather than obeying standards, and free compilers tend to have a lack of resources.  So, the two big free compilers are our best chance for getting standards implemented (and hopefully, increased interoperablity between them).

### Vector Pascal

[Vector Pascal](https://sourceforge.net/projects/vectorpascalcom/) is an interesting project, adding extensions for vector programming and more importantly, Unicode identifiers.  Though, it falls very short on its claim of supporting ISO 10206, only passing 5 of these tests (oddly, it fails all three that FPC passes, and FPC fails all five it passes), as of 2017-10-13.

### Virtual Pascal

That's been officially dead for over a decade, but I seriously doubt it would pass a single test.  I could be wrong.  I might try it out later.  It is amazing that the VP community still exists and that they didn't follow the VP developers' advice to move to Free Pascal.
