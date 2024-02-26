// db/data-model.cds

namespace my.TestService;
using { managed, cuid } from '@sap/cds/common';


entity Tests{
  key TestID       : UUID;
      Title       : String;
      Description : String;
      CreatedAt   : DateTime;
      CreatedBy   : String;
      ModifiedAt  : DateTime;
      ModifiedBy  : String;
      questions : Association to  many Questions on questions.test = $self;
}

entity Questions:Answers {
  key QuestionID : String;
  Text           : String;
  test : Association to Tests;
  answers : Answers;
 
}

// Aspect for recording correct answers
type Answers{
  key AnswerID   : String;
      Text       : String;

  // No direct associations for aspects
}
