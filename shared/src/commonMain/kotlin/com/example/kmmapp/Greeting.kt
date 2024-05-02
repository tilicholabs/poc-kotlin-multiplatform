package com.example.kmmapp

class Formatter {
    private val platform: Platform = getPlatform()

    fun format(phoneNumber: String): String {
        if (!phoneNumber.isNullOrEmpty()) {
            return "+91 "+phoneNumber
        }
        return phoneNumber
    }
}