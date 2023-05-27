module L2Task7 where

import Prelude
import Data.List (List(..))
import Effect.Console (logShow)
import Data.List (length)


infixr 6 Cons as :


take :: forall a. Int -> List a -> List a
take i (x:xs) | i > 0 = x : take (i-1) xs
              | otherwise = Nil
take _ _ = Nil


l2t7 = do
    let l = 1 : 2 : 3 : 4 : 5 : 6 : Nil
    let tl = take 2 l
    logShow(length (tl))
