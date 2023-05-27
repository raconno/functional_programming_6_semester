module Task4 where

import Prelude
import Data.List.Types (List(..))
import Effect.Console (logShow)

infixr 6 Cons as :


length :: forall a. List a -> Int
length (x:xs) = 1 + length xs
length x = 0

task4 = do
    let i = length (1 : 2 : 3 : Nil)
    logShow (i)
