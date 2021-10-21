import { Controller } from "@hotwired/stimulus"
import { parseISO, formatDistanceToNow } from 'date-fns'

export default class extends Controller {
  static values = { timestamp: String }

  connect() {
    this.element.textContent = formatDistanceToNow(this.time, { addSuffix: true })
  }

  get time() {
    return parseISO(this.timestampValue);
  }
}
