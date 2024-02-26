// srv/cat-service.cds

using my.TestService as test from '../db/data-model';


// Tests entity is already declared
service TestService {
    entity Tests     @readonly     as projection on test.Tests;
    entity Questions @readonly as projection on test.Questions;
}
