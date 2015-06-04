-------------------------------------------------------------------
-- |
-- Module       : Preamble
-- Copyright    : (C) 2014-2015 Dom De Re
-- License      : BSD3
-- Maintainer   : Dom De Re
--
-- The bits of the Prelude used in this project.
--
-------------------------------------------------------------------
module Preamble (
    -- * Type Classes
        Functor(..)
    ,   Foldable(..)
    ,   Traversable(..)
    ,   Alternative(..)
    ,   Applicative(..)
    ,   Bifunctor(..)
    ,   Monad(..)
    ,   MonadPlus(..)
    ,   MonadReader(..)
    ,   MonadState(..)
    ,   MonadTrans(..)
    ,   Monoid(..)
    ,   Semigroup(..)
    ,   Show(..)
    ,   Eq(..)
    ,   Num(..)
    ,   Ord(..)
    -- * Types
    ,   Bool(..)
    ,   Char
    ,   Double
    ,   Int
    ,   NonEmpty(..)
    ,   String
    ,   Word8
    ,   Word16
    ,   Word32
    -- ** Monads and Monad Transformers
    ,   Either(..)
    ,   EitherT(..)
    ,   IO
    ,   Identity(..)
    ,   Maybe(..)
    ,   MaybeT(..)
    ,   Reader
    ,   ReaderT(..)
    ,   State
    ,   StateT(..)
    -- * Operators
    ,   (.)
    ,   ($)
    ,   (<$>)
    ,   (++)
    ,   (&&)
    ,   (||)
    -- ** Monad
    ,   (=<<)
    ,   (>=>)
    ,   (<=<)
    -- * Functions
    ,   id
    ,   const
    ,   flip
    ,   either
    ,   fromIntegral
    ,   maybe
    ,   on
    ,   otherwise
    ,   ord
    -- ** Foldable
    ,   sequenceA_
    ,   traverse_
    -- ** Either
    ,   lefts
    ,   rights
    ,   partitionEithers
    -- ** Maybe
    ,   catMaybes
    -- ** Lists
    ,   drop
    ,   dropWhile
    ,   take
    ,   takeWhile
    ,   elem
    ,   filter
    ,   notElem
    ,   partition
    ,   zip
    ,   zipWith
    -- ** NonEmpty Lists
    ,   nonEmpty
    ,   head
    ,   tail
    -- ** Monad
    ,   join
    ,   replicateM
    ,   replicateM_
    ,   unless
    ,   when
    -- ** Monad Transformers
    ,   asks
    ,   gets
    -- *** EitherT
    ,   bimapEitherT
    ,   eitherT
    ,   hoistEither
    ,   left
    ,   mapEitherT
    ) where

import Prelude hiding ( head, tail )
import Control.Applicative
import Control.Monad ( MonadPlus(..), (>=>), (<=<), join, replicateM, replicateM_, unless, when )
import Control.Monad.Identity ( Identity(..) )
import Control.Monad.Reader ( MonadReader(..), Reader, ReaderT(..), asks )
import Control.Monad.State ( MonadState(..), State, StateT(..), gets )
import Control.Monad.Trans ( MonadTrans(..) )
import Control.Monad.Trans.Maybe ( MaybeT(..) )
import Control.Monad.Trans.Either ( EitherT(..), bimapEitherT, eitherT, hoistEither, left, mapEitherT )
import Data.Bifunctor ( Bifunctor(..) )
import Data.Char ( ord )
import Data.Either ( lefts, rights, partitionEithers )
import Data.Foldable ( Foldable(..), sequenceA_, traverse_ )
import Data.Function ( on )
import Data.List ( partition )
import Data.List.NonEmpty ( NonEmpty(..), nonEmpty, head, tail)
import Data.Maybe ( catMaybes )
import Data.Monoid ( Monoid(..) )
import Data.Semigroup ( Semigroup(..) )
import Data.Traversable ( Traversable(..) )
import Data.Word ( Word8, Word16, Word32 )
