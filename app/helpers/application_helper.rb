module ApplicationHelper

  def turbo_spinner
    "<div class='mx-8'><div class='w-full px-8 py-4 mb-4 text-center text-indigo-200 animate-pulse border-2 border-dashed rounded-md border-indigo-200'>Loading ...</div></div>"
  end

  def turbo_frame_load(frame_id, frame_url)
    "<turbo-frame id='#{frame_id}' src='#{frame_url}' target='_top'>#{turbo_spinner}</turbo-frame>"
  end

end
