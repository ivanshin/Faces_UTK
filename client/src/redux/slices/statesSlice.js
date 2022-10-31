import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    answer: false,
    photoURL: false,
    photo: false,
    isPhoto: false,
    invalidAnswer: false,
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
        setPhoto: (state, action) => {
            state.photo = action.payload
        },
    },
})

export const { setAnswer, setPhotoURL, setInvalidAnswer, setPhoto } = statesSlice.actions

export default statesSlice.reducer