{-
Welcome to a Spago project!
You can edit this file as you like.

Need help? See the following resources:
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html

When creating a new Spago project, you can use
`spago init --no-comments` or `spago init -C`
to generate this file without the comments in this block.
-}
{ name = "bucketchain-static"
, license = "MIT"
, repository = "https://github.com/Bucketchain/purescript-bucketchain-static"
, dependencies =
  [ "aff"
  , "bucketchain"
  , "datetime"
  , "effect"
  , "either"
  , "exceptions"
  , "foldable-traversable"
  , "foreign-object"
  , "integers"
  , "js-date"
  , "maybe"
  , "newtype"
  , "node-fs"
  , "node-fs-aff"
  , "node-path"
  , "node-url"
  , "nullable"
  , "prelude"
  , "strings"
  , "transformers"
  , "tuples"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
