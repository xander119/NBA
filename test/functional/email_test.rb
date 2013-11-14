require 'test_helper'

class EmailTest < ActionMailer::TestCase
  test "register" do
    mail = Email.register
    assert_equal "Register", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
