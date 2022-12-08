import { configureStore } from '@reduxjs/toolkit'
import states from './slices/statesSlice'

export const store = configureStore({
    reducer: {
        states
    },
})