import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
import style from './show_modal_style';
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
          style={style}
          >
            {this.props.book.title}
            {this.props.book.author}
            {this.props.book.publish_date}
            <img src={this.props.book.img_url} ></img>
            {this.props.book.description}
        </Modal>
      </div>
    )
  }
}

export default BookShowModal;
