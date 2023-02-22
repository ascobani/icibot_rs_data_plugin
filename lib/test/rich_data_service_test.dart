enum RichDataStatus { initial, pass, error }

class RichDataServiceTest {
  RichDataStatus richDataStatus = RichDataStatus.initial;

  void error() => richDataStatus = RichDataStatus.error;

  void pass() => richDataStatus = RichDataStatus.pass;
}
