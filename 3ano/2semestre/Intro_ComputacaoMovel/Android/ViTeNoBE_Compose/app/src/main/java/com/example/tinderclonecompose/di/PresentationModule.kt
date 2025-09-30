package com.example.tinderclonecompose.di

import com.example.tinderclonecompose.chat.ChatViewModel
import com.example.tinderclonecompose.editprofile.EditProfileViewModel
import com.example.tinderclonecompose.home.HomeViewModel
import com.example.tinderclonecompose.login.LoginViewModel
import com.example.tinderclonecompose.matchlist.MatchListViewModel
import com.example.tinderclonecompose.signup.SignUpViewModel
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module

val presentationModule = module {

    //View models
    viewModel { ChatViewModel(get(), get(), get()) }
    viewModel { EditProfileViewModel(get(), get(), get(), get(), get()) }
    viewModel { SignUpViewModel(get(), get()) }
    viewModel { LoginViewModel(get(), get()) }
    viewModel { MatchListViewModel(get(), get()) }
    viewModel { HomeViewModel(get(), get(), get(), get(), get()) }
}