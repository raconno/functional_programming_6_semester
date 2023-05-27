module L2Task2 where

import Prelude
import Data.List.Types (List(..))
import Data.Maybe (Maybe(..))
import Effect.Console (logShow)

infixr 6 Cons as :

findLastIndex :: forall a. (a -> Boolean) -> List a -> Int
findLastIndex p (x:xs) =
    if findLastIndex p xs == -1 then
        if p x then 0 else -1
    else findLastIndex p xs + 1
findLastIndex _ _ = -1

l2t2 = do
    let l = 1:2:2:Nil
    logShow(findLastIndex (_==2) l)
