package com.example.tinderclonecompose.components.dialogs

import androidx.compose.runtime.Composable
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.example.tinderclonecompose.home.NewMatchView
import com.example.tinderclonecompose.model.ProfilePictureState

@Composable
fun NewMatchDialog(
    pictureStates: List<ProfilePictureState>,
    onSendMessage: (String) -> Unit,
    onCloseClicked: () -> Unit) {
    Dialog(onDismissRequest = onCloseClicked, properties = DialogProperties(usePlatformDefaultWidth = false)) {
        NewMatchView(pictureStates, onSendMessage, onCloseClicked)
    }
}