import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import beersReducer from './beer_reducer'
import breweriesReducer from './brewery_reducer'

const entitiesReducer = combineReducers({
    users: usersReducer,
    beers: beersReducer,
    breweries: breweriesReducer
});

export default entitiesReducer;