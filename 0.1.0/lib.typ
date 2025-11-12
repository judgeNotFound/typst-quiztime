#let checkbox = "☐"
#let checkbox-true = "☑︎"

#let question(
  // Actual question to be asked
  text: "",

  // Possible values: multiple-choice, text
  kind: "",

  // Answers for a multiple choice question
  // Only used if kind = "multiple-choice"
  answers: (),

  // The space that should be given for writing an answer
  // Only used for kind = "text"
  answer-space: 100pt,

  // The index (1-based) of the answers that are true
  true-answers: (),

  // Whether or not to show solutions
  show-solutions: false,
) = {
  text + "\n"
  v(5pt)

  if kind == "multiple-choice" {
    let idx = 0
    while idx < answers.len() {
      let a = answers.at(idx)

      h(20pt)
      if show-solutions and true-answers.contains(idx + 1) {
        checkbox-true
      } else {
        checkbox
      }
      h(10pt)

      a + "\n"
      idx += 1
    }
  } else {
    v(answer-space)
  }
}

#let quiz(
  // Give your quiz a title
  quiz-title: "",

  // Questions
  questions: (),

  // The text before 1: <question>
  pre-numbering: "",
) = {
  let idx = 0
  while idx < questions.len() {
    let q = questions.at(idx)

    text(pre-numbering + str(idx + 1) + ": ", weight: "bold")
    q
    v(20pt)

    idx += 1
  }
}