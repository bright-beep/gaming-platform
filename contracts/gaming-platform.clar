;; Title: Gaming Platform Smart Contract
;; Description: A decentralized gaming platform contract that manages game assets (NFTs),
;; player registration, leaderboard tracking, and reward distribution.

;; ============================================================================
;; Constants
;; ============================================================================

;; Error Constants
(define-constant ERR-NOT-AUTHORIZED (err u1))
(define-constant ERR-INVALID-GAME-ASSET (err u2))
(define-constant ERR-INSUFFICIENT-FUNDS (err u3))
(define-constant ERR-TRANSFER-FAILED (err u4))
(define-constant ERR-LEADERBOARD-FULL (err u5))
(define-constant ERR-ALREADY-REGISTERED (err u6))
(define-constant ERR-INVALID-REWARD (err u7))
(define-constant ERR-INVALID-INPUT (err u8))
(define-constant ERR-INVALID-SCORE (err u9))
(define-constant ERR-INVALID-FEE (err u10))
(define-constant ERR-INVALID-ENTRIES (err u11))
(define-constant ERR-PLAYER-NOT-FOUND (err u12))

;; ============================================================================
;; Data Variables
;; ============================================================================

;; Game Configuration
(define-data-var game-fee uint u10)
(define-data-var max-leaderboard-entries uint u50)
(define-data-var total-prize-pool uint u0)
(define-data-var total-game-assets uint u0)

;; ============================================================================
;; Data Maps
;; ============================================================================

;; NFT Token Definition
(define-non-fungible-token game-asset uint)

;; Asset Metadata Storage
(define-map game-asset-metadata 
    { token-id: uint }
    { 
        name: (string-ascii 50),
        description: (string-ascii 200),
        rarity: (string-ascii 20),
        power-level: uint
    }
)

;; Player Statistics and Leaderboard
(define-map leaderboard 
    { player: principal }
    { 
        score: uint, 
        games-played: uint,
        total-rewards: uint 
    }
)

;; Administrative Access Control
(define-map game-admin-whitelist principal bool)
