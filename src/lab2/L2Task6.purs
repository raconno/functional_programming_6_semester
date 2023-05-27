module L2Task6 where

import Prelude
import Data.List.Types (List(..))
import Effect.Console (logShow)
import Data.List (length)
import Data.List (reverse)
import Data.List (head)

infixr 6 Cons as :

filter' :: forall a. (a -> Boolean) -> List a -> List a -> List a
filter' p (x:xs) l | p x = filter' p xs (x:l)
                   | otherwise = filter' p xs l
filter' _ _ l = reverse l

filter :: forall a. (a -> Boolean) -> List a -> List a
filter p x = filter' p x Nil
filter _ _ = Nil

l2t6 = do
    let l = 1 : 2 : 3 : 4 : 5 : 6 : Nil
    let fl = filter (_ < 4) l
    logShow(length (fl))
    logShow(head fl)