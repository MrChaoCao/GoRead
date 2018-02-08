import * as ShelfApiUtil from '../util/shelf_api_util';

export const RECEIVE_ALL_SHELVES = "RECEIVE_ALL_SHELVES";
export const RECEIVE_SHELF = "RECEIVE_SHELF";
export const REMOVE_SHELF = "REMOVE_SHELF"

const receiveAllShelves = shelves => ({
  type: RECEIVE_ALL_SHELVES,
  shelves
});

const receiveShelf = shelf => ({
  type: RECEIVE_SHELF,
  shelf
});

const removeShelf = shelfId => ({
  type: REMOVE_SHELF,
  shelfId
});

export const fetchShelves = () => dispatch => (
  ShelfApiUtil.fetchShelves().then(serverShelves => dispatch(receiveAllShelves(serverShelves)))
);

export const fetchShelf = id => dispatch => (
  ShelfApiUtil.fetchShelf().then(serverShelf => dispatch(receiveShelf(serverShelf)))
);

export const removeShelf = shelfId => dispatch => (
  ShelfApiUtil.removeShelf(shelfId).then( shelfId => dispatch(removeShelf(shelfId)))
);
