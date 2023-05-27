module L2Task5 where

import Prelude
import Effect.Console (logShow)
import Data.List.Types (List(..))
import Data.List (length)


infixr 6 Cons as :

filter :: forall a b. (a -> Boolean) -> List a -> List a
filter p (x:xs)| p x = x : (filter p xs)
               | otherwise = (filter p xs)
filter _ _ = Nil

l2t5 = do
    let l = 1 : 2 : 3 : 4 : 5 : 6 : Nil

    logShow(length (filter (_ < 4) l))