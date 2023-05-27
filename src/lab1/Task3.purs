module Task3 where

import Prelude

import Prelude
import Data.List.Types (List(..))
import Effect.Console (logShow)
import Data.List (length)

infixr 6 Cons as :

snoc :: forall a. List a -> a -> List a
snoc (x:xs) a = x : snoc xs a
snoc x a = a : Nil

task3 = do
    let l = (1 : 2 : 3 : Nil)
    logShow(length l)

    let i = snoc l 8
    logShow (length i)
