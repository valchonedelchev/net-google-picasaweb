All new text files should have the following properties set:

  * `svn propset svn:keywords "Id Release" <file>`
  * `svn propset svn:eol-style "native" <file>`

The root directory of the repository has the following set for its `svn:ignore' patterns:

  * `Makefile`
  * `pm_to_blib`
  * `blib`