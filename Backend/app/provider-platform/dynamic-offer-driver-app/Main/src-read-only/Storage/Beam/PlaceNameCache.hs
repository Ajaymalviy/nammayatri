{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}

module Storage.Beam.PlaceNameCache where

import qualified Database.Beam as B
import qualified Domain.Action.UI.PlaceNameCache
import Domain.Types.Common ()
import Kernel.External.Encryption
import Kernel.Prelude
import qualified Kernel.Prelude
import Tools.Beam.UtilsTH

data PlaceNameCacheT f = PlaceNameCacheT
  { addressComponents :: B.C f [Domain.Action.UI.PlaceNameCache.AddressResp],
    createdAt :: B.C f Kernel.Prelude.UTCTime,
    formattedAddress :: B.C f (Kernel.Prelude.Maybe Kernel.Prelude.Text),
    geoHash :: B.C f (Kernel.Prelude.Maybe Kernel.Prelude.Text),
    id :: B.C f Kernel.Prelude.Text,
    lat :: B.C f Kernel.Prelude.Double,
    lon :: B.C f Kernel.Prelude.Double,
    placeId :: B.C f (Kernel.Prelude.Maybe Kernel.Prelude.Text),
    plusCode :: B.C f (Kernel.Prelude.Maybe Kernel.Prelude.Text)
  }
  deriving (Generic, B.Beamable)

instance B.Table PlaceNameCacheT where
  data PrimaryKey PlaceNameCacheT f = PlaceNameCacheId (B.C f Kernel.Prelude.Text) deriving (Generic, B.Beamable)
  primaryKey = PlaceNameCacheId . id

type PlaceNameCache = PlaceNameCacheT Identity

$(enableKVPG ''PlaceNameCacheT ['id] [['geoHash], ['placeId]])

$(mkTableInstances ''PlaceNameCacheT "place_name_cache")
