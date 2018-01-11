{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_isbn_verifier (
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
version = Version [2,2,0,3] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/bin"
libdir     = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/lib/x86_64-osx-ghc-8.2.2/isbn-verifier-2.2.0.3-2XXZfvZTZYeL7d0u5CoECH-test"
dynlibdir  = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/lib/x86_64-osx-ghc-8.2.2"
datadir    = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/share/x86_64-osx-ghc-8.2.2/isbn-verifier-2.2.0.3"
libexecdir = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/libexec/x86_64-osx-ghc-8.2.2/isbn-verifier-2.2.0.3"
sysconfdir = "/Users/benjamin.hall/exercism/haskell/isbn-verifier/.stack-work/install/x86_64-osx/lts-10.2/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "isbn_verifier_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "isbn_verifier_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "isbn_verifier_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "isbn_verifier_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "isbn_verifier_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "isbn_verifier_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
