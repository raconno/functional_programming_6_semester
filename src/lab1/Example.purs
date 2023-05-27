module Example where

import Prelude
import Effect.Console (log)
import Data.List.Types (List(..))
import Effect.Console (logShow)
import Data.List (head, length)

--main = log "Hello, World!"
infixr 6 Cons as :


takeWhile :: forall a. List a -> Int
takeWhile (x:xs) = 1 + takeWhile xs
takeWhile x = 0

--findFive :: forall a. a -> Boolean
----findFive 5 = true
--findFive _ = true

main = do
    let i = takeWhile (1 : 2 : 3 : Nil)
    logShow (i)


--takeWhile :: forall a. (a -> Boolean) -> List a -> List a
--takeWhile p (x:xs) | p x = x : takeWhile p xs
--takeWhile _ _ = Nil
--
--findFive :: forall a. a -> Boolean
----findFive 5 = true
--findFive _ = true
--
--main = do
--    let i = takeWhile findFive (1 : 2 : 3 : Nil)
--    logShow (head i)