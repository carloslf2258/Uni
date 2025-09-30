package com.example.tinderclonecompose.di

import com.example.tinderclonecompose.BuildConfig
import com.example.tinderclonedata.repository.auth.AuthRemoteDataSource
import com.example.tinderclonedata.source.firebase.AuthRemoteDataSourceImpl
import com.example.tinderclonedomain.auth.AuthRepository
import com.example.tinderclonedata.repository.auth.AuthRepositoryImpl
import com.example.tinderclonedata.repository.match.MatchRemoteDataSource
import com.example.tinderclonedata.repository.match.MatchRepositoryImpl
import com.example.tinderclonedata.repository.message.MessageRemoteDataSource
import com.example.tinderclonedata.repository.message.MessageRepositoryImpl
import com.example.tinderclonedata.repository.picture.PictureRemoteDataSource
import com.example.tinderclonedata.repository.picture.PictureRepositoryImpl
import com.example.tinderclonedata.repository.profile.ProfileRemoteDataSource
import com.example.tinderclonedata.repository.profile.ProfileRepositoryImpl
import com.example.tinderclonedata.source.firebase.MatchRemoteDataSourceImpl
import com.example.tinderclonedomain.match.MatchRepository
import com.example.tinderclonedata.source.firebase.MessageRemoteDataSourceImpl
import com.example.tinderclonedata.source.firebase.PictureRemoteDataSourceImpl
import com.example.tinderclonedomain.message.MessageRepository
import com.example.tinderclonedata.source.firebase.ProfileRemoteDataSourceImpl
import com.example.tinderclonedata.source.mock.AuthRemoteDataSourceMockImpl
import com.example.tinderclonedata.source.mock.MatchRemoteDataSourceMockImpl
import com.example.tinderclonedata.source.mock.MessageRemoteDataSourceMockImpl
import com.example.tinderclonedata.source.mock.PictureRemoteDataSourceMockImpl
import com.example.tinderclonedata.source.mock.ProfileRemoteDataSourceMockImpl
import com.example.tinderclonedomain.picture.PictureRepository
import com.example.tinderclonedomain.profile.ProfileRepository
import org.koin.dsl.module

val repositoryModule = module {
    single<ProfileRepository> { ProfileRepositoryImpl(get()) }
    single<PictureRepository> { PictureRepositoryImpl(get()) }
    single<MessageRepository> { MessageRepositoryImpl(get()) }
    single<MatchRepository> { MatchRepositoryImpl(get()) }
    single<AuthRepository> { AuthRepositoryImpl(get()) }
}

val sourceModule = module {
    single<PictureRemoteDataSource> { PictureRemoteDataSourceImpl() }
    single<ProfileRemoteDataSource> { ProfileRemoteDataSourceImpl() }
    single<MessageRemoteDataSource> { MessageRemoteDataSourceImpl() }
    single<MatchRemoteDataSource> { MatchRemoteDataSourceImpl() }
    single<AuthRemoteDataSource> { AuthRemoteDataSourceImpl() }
}

val mockSourceModule = module {
    single<PictureRemoteDataSource> { PictureRemoteDataSourceMockImpl(get()) }
    single<ProfileRemoteDataSource> { ProfileRemoteDataSourceMockImpl() }
    single<MessageRemoteDataSource> { MessageRemoteDataSourceMockImpl() }
    single<MatchRemoteDataSource> { MatchRemoteDataSourceMockImpl() }
    single<AuthRemoteDataSource> { AuthRemoteDataSourceMockImpl() }
}

val dataModule = module {
    includes(repositoryModule)
    includes(if(BuildConfig.BUILD_TYPE == "mock") mockSourceModule else sourceModule)
}