module L2Task3 where

import Prelude
import Data.List.Types (List(..))
import Data.Tuple (Tuple(..))
import Effect.Console (logShow)

infixr 6 Cons as :

zip :: forall a b. List a -> List b -> List (Tuple a b)
zip (a:ax) (b:bx) = Tuple a b : zip ax bx
zip _ _ = Nil

l2t3 = do
    let l1 = 1 : 2 : 3 : Nil
    let l2 = "first" : "second" : Nil

    logShow(zip l1 l2)