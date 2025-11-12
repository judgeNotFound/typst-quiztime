# Quiztime

Typst package to create quizzes.

```typst
#import "@preview/quiztime:0.1.0": quiz, question

#let q1 = question(
  text: "What color is the sky?",
  kind: "multiple-choice",
  answers: ("Blue", "Red", "Yellow", "Gray"),
  true-answers: (3,4)
)

#let q2 = question(
  text: "What color is the sea?",
  kind: "multiple-choice",
  answers: ("Blue", "Red", "Yellow", "Gray"),
  true-answers: (1),
  show-solutions: true
)

#quiz(questions: (q1,q2), pre-numbering: "Question ")
```