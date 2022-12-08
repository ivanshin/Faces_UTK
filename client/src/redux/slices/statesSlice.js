import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    answer: false,
    photoURL: false,
    isPhoto: false,
    invalidAnswer: false
}

export const statesSlice = createSlice({
    name: 'states',
    initialState,
    reducers: {
        setAnswer: (state, action) => {
            state.answer = action.payload
        },
        setPhotoURL: (state, action) => {
            state.photoURL = action.payload
        },
        setInvalidAnswer: (state, action) => {
            state.invalidAnswer = action.payload
        },
        setIsPhoto: (state, action) => {
            state.isPhoto = action.payload
        },
    },
})

export const { setAnswer, setPhotoURL, setInvalidAnswer, setIsPhoto } = statesSlice.actions

export default statesSlice.reducer