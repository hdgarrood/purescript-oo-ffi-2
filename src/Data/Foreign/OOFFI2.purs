module Data.Foreign.OOFFI2 where

import Prelude
import Data.Foreign (Foreign)

-- | A function, with no fixed number of arguments, which could perform effects
-- | immediately after being called (similar to the functions in
-- | Data.Function.Eff).
-- |
-- | The type arguments track the row of effects and the result type.
foreign import data EffFnAny :: # * -> * -> *

foreign import mkEffFnAny  :: forall eff a. (Array Foreign -> Eff eff a) -> EffFnAny eff a
foreign import runEffFnAny :: forall eff a. EffFnAny eff a -> Array Foreign -> Eff eff a

-- | A `Constructor` is a JavaScript function which is intended to be used
-- | with the `new` keyword.
-- |
-- | The type arguments track the row of effects and the result type.
foreign import data Constructor :: # * -> * -> *

foreign import runConstructor :: forall eff obj. Constructor eff obj -> EffFnAny eff obj
