module Task2 where

import Prelude
import Data.List (List(..))
import Data.List (head)
import Effect.Console (logShow)
import Data.Maybe (Maybe(..))
import Effect (Effect)


null :: forall a. List a -> Boolean
--null Nothing = false
null x =
  let k = head x
  in case k of
      Just k -> false
      Nothing -> true
--show :: forall a. Show a => Maybe a -> Effect Unit
--show maybeValue = case maybeValue of
--  Nothing -> logShow "Nothing"
--  Just value -> logShow $ "Just "

task2 = do
  let l = (Nil)
  logShow(null l)

  let ll = (Cons "easier, but still hard" Nil)
  logShow(null ll)
