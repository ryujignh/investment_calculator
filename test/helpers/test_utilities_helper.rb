# -*- coding: utf-8 -*-
module TestUtiltiesHelper

  def json_response
    @json_response = JSON.parse(@response.body)
  end

end
