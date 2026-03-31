import pickle

with open('stored_data.pkl', 'rb') as pickle_file:
    reviews = pickle.load(pickle_file)

#print(reviews)
#print(list(reviews.keys()))
#print(reviews["Endgame"][:2])