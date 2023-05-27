module L2Task8 where

import Prelude
import Data.List (List(..))
import Effect.Console (logShow)
import Data.List (length)
import Data.List (head)
import Data.List (reverse)


infixr 6 Cons as :

take' :: forall a. Int -> List a -> List a -> List a
take' i (x:xs) l | i > 0 = take' (i-1) xs (x:l)
                 | otherwise = reverse l
take' _ _ l = reverse l

take :: forall a. Int -> List a -> List a
take i x = take' i x Nil
take _ _ = Nil


l2t8 = do
    let l = 1 : 2 : 3 : 4 : 5 : 6 : Nil
    let tl = take 2 l
    logShow(length (tl))
    logShow(head (tl))
