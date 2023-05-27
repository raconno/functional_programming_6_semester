module L2Task1 where

import Prelude
import Data.List.Types (List(..))
import Effect.Console (logShow)

infixr 6 Cons as :

--findTwo a | show a == "2" = true
--
--findTwo :: forall a. a -> Boolean
--findTwo a = if a == 2 then true else false
--findTwo _ = false

findFirst :: forall a. (a -> Boolean) -> List a -> Int
findFirst p (x:xs) =
    if p x then 0
    else if findFirst p xs == -1 then -1
    else findFirst p xs + 1
findFirst _ _ = -1

l2t1 = do
    let l1 = 1:2:Nil
    logShow(findFirst (_==2) l1)

    let l2 = 2:2:Nil
    logShow(findFirst (_==2) l2)

    let l3 = 1:Nil
    logShow(findFirst (_==2) l3)

    let l4 = Nil
    logShow(findFirst (_==2) l4)
