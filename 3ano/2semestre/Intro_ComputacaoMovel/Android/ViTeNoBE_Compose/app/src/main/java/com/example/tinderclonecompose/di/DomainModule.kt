package com.example.tinderclonecompose.di

import com.example.tinderclonedomain.usecase.GetMatchesUseCase
import com.example.tinderclonedomain.usecase.GetMaxBirthdateUseCase
import com.example.tinderclonedomain.usecase.GetMessagesUseCase
import com.example.tinderclonedomain.usecase.GetPictureUseCase
import com.example.tinderclonedomain.usecase.GetProfileUseCase
import com.example.tinderclonedomain.usecase.GetProfilesUseCase
import com.example.tinderclonedomain.usecase.IsUserSignedInUseCase
import com.example.tinderclonedomain.usecase.LikeProfileUseCase
import com.example.tinderclonedomain.usecase.PassProfileUseCase
import com.example.tinderclonedomain.usecase.SendMessageUseCase
import com.example.tinderclonedomain.usecase.SignInUseCase
import com.example.tinderclonedomain.usecase.SignOutUseCase
import com.example.tinderclonedomain.usecase.SignUpUseCase
import com.example.tinderclonedomain.usecase.UpdatePicturesUseCase
import com.example.tinderclonedomain.usecase.UpdateProfileUseCase
import org.koin.dsl.module

val domainModule = module {
    factory { SignUpUseCase(get(), get(), get()) }
    factory { GetMaxBirthdateUseCase() }
    factory { GetProfileUseCase(get()) }
    factory { LikeProfileUseCase(get(), get()) }
    factory { PassProfileUseCase(get()) }
    factory { SendMessageUseCase(get()) }
    factory { GetMessagesUseCase(get()) }
    factory { SignInUseCase(get()) }
    factory { IsUserSignedInUseCase(get()) }
    factory { GetMatchesUseCase(get()) }
    factory { SignOutUseCase(get()) }
    factory { UpdateProfileUseCase(get()) }
    factory { GetProfilesUseCase(get()) }
    factory { GetPictureUseCase(get()) }
    factory { UpdatePicturesUseCase(get(), get()) }
}