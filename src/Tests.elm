port module Tests exposing (main)

import Test exposing (Test, describe)
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)

import ServerChatTest
import ClientChatTest
import ClientTest


all : Test
all =
  describe "l-o-l"
    [ ServerChatTest.tests
    , ClientChatTest.tests
    , ClientTest.tests
    ]


main : TestProgram
main =
  run emit all


port emit : ( String, Value ) -> Cmd msg
