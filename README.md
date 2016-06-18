### SANBI repository for Galaxy Community Conference 2016

This repository contains posters and other content for the Galaxy Community Conference 2016 (GCC2016). 

### The posters

The posters for the conference were created using [Inkscape](https://inkscape.org/en/) and version controlled using `git` (for Mac users, apparently [SourceTree](https://www.sourcetreeapp.com/) is a good GUI). Rendered versions of the posters are available on the [releases page](https://github.com/SANBI-SA/GCC2016/releases). To render a new version, you need to tag a new release. Do this with:

````
git tag -a TAGNAME -m 'MESSAGE'
git push --tags
````

Where `TAGNAME` is a descriptive tag name for your release (e.g. *monday1*) and `MESSAGE` is a message (e.g. *New version of SANBI logo added*) describing the release. This will trigger a build on Travis CI that builds the actual PDFs and JPGs.

### Copyright

The contents of this repository are Copyright 2016, South African National Bioinformatics Institute, University of the Western Cape. They are available under license as specified by the file LICENSE in the root of the repository.
