module Task1 where

import Prelude

import Data.List (range, filter)
import Data.Foldable (sum)
import Data.Maybe (Maybe(..))
--import Contorl.Monad.Eff.Console (logShow)
import Effect.Console (logShow)
import Effect.Console (log)

import Data.Foldable (for_)
import Effect (Effect)

import Data.List (List(..))
import Data.List (head)
import Data.List (tail)
-----
infixr 6 Cons as :
-----

--data List a = Cons a (List a) | Nil

singletonFunc :: ∀ a. a -> List a
singletonFunc x = (Cons x Nil)

task1 = do
  let l = singletonFunc "dead"

  logShow (head l)
  logShow (tail l)


--head :: forall a. List a -> Maybe a
--head Nil = Nothing
--head (Cons x _) = Just x

--tail :: forall a. List a -> Maybe(List a)
--tail Nil = Nothing
--tail (Cons _ xs) = Just xs

--showLog :: forall a. Maybe a -> Effect Unit
--showLog Nothing = log ""
--showLog _ = logShow _
--showLog !! x = log x
--showLog x is not Nil = log x

--main = do
--  -- I'm using an Array here for simplicity, but the same goes for List
--  let l = singletonFunc "dead"
----  let h = head l
--
--  logShow (head l)
--  logShow (tail l)
----  for_ l \i → head i
----  map (\a -> unit) l


--answer = log(singletonFunc 1)
--show :: forall a. List a => a -> String
--instance showFoo :: Show List a where show a = a
--head ::
--answer = singletonFunc 1
--for_ l \i → logShow i

--ns = range 0 999

--multiples = filter (\n -> mod n 3 == 0 || mod n 5 == 0) ns

--answer = sum multiples
