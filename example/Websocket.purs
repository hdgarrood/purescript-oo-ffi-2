module Websocket where

import Prelude
import Data.Function.Eff
import Data.Foreign.OOFFI2

-- | The effect for interacting with websockets.
foreign import data WEBSOCKET :: !

-- | A WebSocket.
foreign import data WebSocket :: *

foreign import websocketCtor :: forall eff. Constructor (ws :: WEBSOCKET | eff) WebSocket
