#import "@preview/quiztime:0.1.0": quiz, question

#let q1 = question(
  text: "What color is the sky?",
  kind: "multiple-choice",
  answers: ("Blue", "Red", "Yellow", "Gray"),
  true-answers: (1,4)
)

#let q2 = question(
  text: "What color is the sky?",
  kind: "multiple-choice",
  answers: ("Blue", "Red", "Yellow", "Gray"),
  true-answers: (1,4),
  show-solutions: true
)

#quiz(quiz-title: "A title", questions: (q1,q2), pre-numbering: "Frage ")