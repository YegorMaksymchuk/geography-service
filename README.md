# Geography-service
REST API based on Node.js and MongoDB application for geography quiz.

## How to run:
* docker-compose up --build geography-db
* docker-compose up --build geography-server

## Make a test:
* curl -X GET http://localhost:4000/api/questions?number=2

  {
    "_id": "5c36f799a31327c168e74539",
    "question": "Which planet having all the circumstances for the existence of life?",
    "answers": [
      "Earth",
      "Moon",
      "Sun",
      "Jupiter"
    ],
    "answer": "Earth",
    "wieght": 1
  },
  {
    "_id": "5c36f799a31327c168e7453a",
    "question": "The age of earth?",
    "answers": [
      "About 4600 million years.",
      "About 5600 million years.",
      "About 80000 million years.",
      "About 46000 million years."
    ],
    "answer": "About 4600 million years.",
    "wieght": 1
  }
]

