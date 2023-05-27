module L2Task4 where

import Prelude
import Data.List.Types (List(..))
import Data.Tuple (Tuple(..))
import Effect.Console (logShow)
import Data.Maybe (Maybe(..))

infixr 6 Cons as :

reverse :: forall a b. Tuple (List a) (List b) -> Tuple (List a) (List b) -> Tuple (List a) (List b)
reverse (Tuple x y) (Tuple (a:ax) (b:bx)) = reverse (Tuple (a:x) (b:y)) (Tuple ax bx)
reverse t _ = t

unzip' :: forall a b. List (Tuple a b) -> Tuple (List a) (List b) -> Tuple (List a) (List b)
unzip' ((Tuple a b) : tail) (Tuple (ax) (bx)) = unzip' tail (Tuple (a:ax) (b:bx))
unzip' _ t = reverse (Tuple Nil Nil) t

unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip ((Tuple a b) : tail) = unzip' tail (Tuple (a:Nil) (b:Nil))
unzip _ = Tuple Nil Nil

l2t4 = do
    logShow (unzip ((Tuple 1 "one"):(Tuple 2 "two"):(Tuple 3 "three"):Nil))


--unzip :: forall a b. List(Tuple a b) -> Maybe a
--unzip ((Tuple a b) : ac) = Just a
--unzip _ = Nothing
--
--l2t4 = do
--    logShow (unzip ((Tuple 1 2):Nil))
--
--
