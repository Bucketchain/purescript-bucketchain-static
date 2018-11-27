module Main where

import Prelude

import Bucketchain (createServer, listen)
import Bucketchain.Static (withStatic)
import Bucketchain.Middleware (Middleware)
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Node.HTTP (ListenOptions, Server)

main :: Effect Unit
main = server >>= listen opts

server :: Effect Server
server = createServer middleware

opts :: ListenOptions
opts =
  { hostname: "127.0.0.1"
  , port: 3000
  , backlog: Nothing
  }

middleware :: Middleware
middleware = withStatic { root: "./example/public", maxAge: 86400 }
