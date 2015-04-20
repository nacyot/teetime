class JupyterFormatter
  def to_html
    fail NotImplementedError
  end

  def to_pdf
    fail NotImplementedError
  end

  def to_plain_text
    fail NotImplementedError
  end

  def to_epub
    fail NotImplementedError
  end
end
