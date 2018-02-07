import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
// import style from './modal_style'

class BookShowModal extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalOpen: false,
    };

    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }
  closeModal(){
    this.setState( {modalOpen: false} );
  }

  openModal(){
    this.setState( {modalOpen: true} );
  }


  render () {
    return (
      <div>
        <img
          onClick={this.openModal}
          className="book-cover"
          src={this.props.book.img_url}/>

        <Modal
          contentLabel="Modal"
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          >

          {
            this.props.book.title
          }

        </Modal>
      </div>
    )
  }
}

export default BookShowModal;
