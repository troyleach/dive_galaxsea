class StoredImagesController < ApplicationController
  require 'dropbox'

  def index
    binding.pry
    image = get_account_info

    return image
  end

  def get_images
    dbx = Dropbox::Client.new(ENV["DROPBOX_ACCESS_TOKEN"])
    folder_contents = dbx.list_folder('/diving')
    binding.pry
    get_thumbnail(path, format='jpeg', size='w64h64')
    return folder_contents
  end

  def get_account_info
    Typhoeus.post("https://api.dropboxapi.com/2/users/get_current_account",
      headers: { Authorization: "Bearer TfMIrZsh-ycAAAAAAAASyoPtJgui9gy9rD3hwe1RVDF8oZsebo912nIViHCPqE_0", 'Content-Type' => 'application/json' },
      body: "{}"
)
# request = Typhoeus.post({
  #   url: 'https://api.dropboxapi.com/2/users/get_current_account',
  #   headers: { Authorization: 'Bearer TfMIrZsh-ycAAAAAAAASyoPtJgui9gy9rD3hwe1RVDF8oZsebo912nIViHCPqE_0', 'Content-Type' => 'text/plain; charset=dropbox-cors-hack' }
  # })
# curl -v -X POST "https://api.dropboxapi.com/2/users/get_current_account" \
#   --header "Authorization: Bearer TfMIrZsh-ycAAAAAAAASyoPtJgui9gy9rD3hwe1RVDF8oZsebo912nIViHCPqE_0"
end
end

# this is the shared link to the folder diving
#https://www.dropbox.com/sh/gs1s3wn38itywav/AABJbI2DGwxjZdSd5Un0rh4na?dl=0

