package com.example.tinderclonecompose.model

import androidx.compose.runtime.Immutable
import com.example.tinderclonedomain.match.Match

@Immutable
data class MatchState(val match: Match, val pictureState: ProfilePictureState)