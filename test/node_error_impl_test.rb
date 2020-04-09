require_relative 'test_helper'

# NodeErrorTest.
# @class_description
#   Tests the NodeError class.
class NodeErrorTest < Minitest::Test

  # Constants.
  CLASS      = NodeError
  EMPTY_HASH = {}

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md, and
  #   .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()

    @m_string = 'Test string'
    @plain    = CLASS.new()
    @m_init   = CLASS.new(@m_string)

  end

  # test_dm_plain().
  # @description
  #   The plain initialization's default message is the default message.
  def test_dm_plain()
    assert_equal(CLASS::DEFAULT_MESSAGE, @plain.message())
  end

  # test_m_init_ass().
  # @description
  #   The message initialized instance was assigned the String.
  def test_m_init_ass()
    assert_equal(@m_string, @m_init.message())
  end

  # test_exp_mess_i().
  # @description
  #   The choice is a String. The explanation attributively equals message and
  #   are identically unequal.
  def test_exp_mess_i()

    assert_operator(@m_string, 'equal?', @m_init.message())
    assert_raises(FrozenError) {
      r    = @m_init.message()
      r[0] = 'L'
    }

  end

  # test_invalid_m_type().
  # @description
  #   An invalid message object raises a TypeError.
  def test_invalid_m_type()

    assert_raises(TypeError) {
      NodeError.new(EMPTY_HASH)
    }

  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

end
