require 'test_helper'

# NodeErrorTest.
# @abstract
# Tests the NodeError class.
class NodeErrorTest < Minitest::Test

  # test_version_declared().
  # @abstract
  # The version was declared.
  def test_version_declared()
    refute_nil(::NodeError::VERSION)
  end

  # test_conf_doc_f_ex().
  # @abstract
  # The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and 
  # README.md files exist.
  def test_conf_doc_f_ex()
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
  end

  # setup().
  # @abstract
  # Set fixtures.
  def setup()
    @m_string = 'Test string'
    @node     = Node.new()
    @plain    = NodeError.new()
    @m_init   = NodeError.new(@m_string)
  end

  # test_dm_plain().
  # @abstract
  # The plain initialization's default message is the default message.
  def test_dm_plain()
    assert_equal(NodeError::DEFAULT_MESSAGE, @plain.message())
  end

  # test_m_init_ass().
  # @abstract
  # The message initialized instance was assigned the String.
  def test_m_init_ass()
    assert_equal(@m_string, @m_init.message())
  end

  # test_m_attr_case().
  # @abstract
  # The return message is attributively equal, and not identical.
  def test_m_attr_case()
    assert_equal(@m_string, @m_init.message())
    refute_same(@m_string, @m_init.message())
  end

  # test_type_check().
  # @abstract
  # A nil object or a Node object is a Node object. All other objects are
  # unacceptable.
  def test_type_check()
    assert(@plain.node?(nil))
    assert(@plain.node?(@node))
    refute(@plain.node?(@m_string))
  end

  # test_exp_mess_eq().
  # @abstract
  # The choice is a String. The explanation attributively equals message and
  # are identically unequal.
  def test_exp_mess_eq()
    assert_instance_of(String, @plain.message())
    assert_equal(@m_string, @m_init.message())
    refute_same(@m_string, @m_init.message())
  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

end

