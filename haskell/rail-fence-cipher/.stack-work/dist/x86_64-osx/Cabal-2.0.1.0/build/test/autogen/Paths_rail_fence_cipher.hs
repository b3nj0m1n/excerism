{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_rail_fence_cipher (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,1,2] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/bin"
libdir     = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/lib/x86_64-osx-ghc-8.2.2/rail-fence-cipher-1.0.1.2-AiYvrCiyo9OJkhbxWQliPK-test"
dynlibdir  = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/lib/x86_64-osx-ghc-8.2.2"
datadir    = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/share/x86_64-osx-ghc-8.2.2/rail-fence-cipher-1.0.1.2"
libexecdir = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/libexec/x86_64-osx-ghc-8.2.2/rail-fence-cipher-1.0.1.2"
sysconfdir = "/Users/benlimited/exercism/haskell/rail-fence-cipher/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "rail_fence_cipher_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "rail_fence_cipher_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "rail_fence_cipher_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "rail_fence_cipher_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "rail_fence_cipher_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "rail_fence_cipher_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)