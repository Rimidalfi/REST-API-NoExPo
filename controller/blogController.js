import {pool} from "../db_config.js"

const getBlog = (req, res) => {
    pool.query('SELECT * FROM articles', (error, results) => {
      if (error) {
        throw error
      }
      res.status(200).json(results.rows)
    })
  }

const getBlogById = (req, res) => {
    const {id} =req.params
    pool.query('SELECT * FROM articles WHERE id = $1', [id], (error, results) => {
        if (error) {
        throw error
        }
        res.status(200).json(results.rows)
})
}

export {
getBlog,
getBlogById,
}